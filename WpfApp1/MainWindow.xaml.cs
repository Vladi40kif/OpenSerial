using System;
using System.Collections.Generic;
using System.IO.Ports;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace WpfApp1
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private SerialPort _serialPort;
        public MainWindow(){
            StringComparer stringComparer = StringComparer.OrdinalIgnoreCase;

            _serialPort = new SerialPort();

            InitializeComponent();

            Button_Start.IsEnabled = false;
            Button_Stop.IsEnabled = false;

            InitCOMsList();

            _serialPort.DataReceived += new SerialDataReceivedEventHandler(DataReceivedHandler);

        }

        public void InitCOMsList() {
            ComboBox_COMs.Items.Clear();
            foreach (string COM in SerialPort.GetPortNames())
                ComboBox_COMs.Items.Add(COM);
        }
        private void Button_Reflesh_COMs_list_Click(object sender, RoutedEventArgs e){
            InitCOMsList();
            Button_Start.IsEnabled = false;
        }
        private void DataReceivedHandler(object sender, SerialDataReceivedEventArgs e){
            SerialPort sp = (SerialPort)sender;
            this.Dispatcher.Invoke(() =>
            {
                ListBox_Chat.Items.Add(sp.ReadExisting().Trim());
                var border = (Border)VisualTreeHelper.GetChild(ListBox_Chat, 0);
                var scrollViewer = (ScrollViewer)VisualTreeHelper.GetChild(border, 0);
                scrollViewer.ScrollToBottom();
            });
        }
        private void Button_Start_Click(object sender, RoutedEventArgs e){
            
            Button_Stop.IsEnabled = true;
            Button_Start.IsEnabled = false;
            try
            {
                _serialPort.PortName = ComboBox_COMs.SelectedItem.ToString();
                _serialPort.BaudRate = int.Parse(ComboBox_Bundrate.Text);
                _serialPort.Open();
            }
            catch (Exception ex) {
                Button_Stop.IsEnabled = false;
                Button_Start.IsEnabled = false;
                MessageBox.Show("Some setings is wrong!", "Error" , MessageBoxButton.OK, MessageBoxImage.Error);
            }


        }
        private void Button_Stop_Click(object sender, RoutedEventArgs e) {
            Button_Stop.IsEnabled = false;
            Button_Start.IsEnabled = true;

            _serialPort.Close();
        }
        private void ComboBox_COMs_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if(ComboBox_Bundrate.SelectedItem != null)
                Button_Start.IsEnabled = true;
        }
        private void ComboBox_Bundrate_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (ComboBox_COMs.SelectedItem != null)
                Button_Start.IsEnabled = true;
        }
        private void Button_Send_Click(object sender, RoutedEventArgs e)
        {
            this.Dispatcher.Invoke(() => ListBox_Chat.Items.Add(TextBox_InputCommand.Text));
            var border = (Border)VisualTreeHelper.GetChild(ListBox_Chat, 0);
            var scrollViewer = (ScrollViewer)VisualTreeHelper.GetChild(border, 0);
            scrollViewer.ScrollToBottom();
            _serialPort.WriteLine(TextBox_InputCommand.Text);
        }
        private void TextBox_InputCommand_KeyDown(object sender, KeyEventArgs e)
        {
            if(e.Key == Key.Enter)
            Button_Send_Click(this, new RoutedEventArgs());
        }
    }
}
