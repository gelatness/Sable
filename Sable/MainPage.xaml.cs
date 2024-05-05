using Plugin.FilePicker;
using Plugin.FilePicker.Abstractions;
using System.IO;
using Microsoft.Maui.Storage;

namespace Sable;

public partial class MainPage : ContentPage
{
	public MainPage()
	{
		InitializeComponent();
	}

    private async void InputFile_Clicked(Object sender, EventArgs e)
    {
        //for testing to select a file
        /*try
        {
            FileData fileData = await CrossFilePicker.Current.PickFile();
            if (fileData == null)
                return; // user canceled file picking

            string fileName = fileData.FileName;
            string contents = System.Text.Encoding.UTF8.GetString(fileData.DataArray);

            System.Console.WriteLine("File name chosen: " + fileName);
            System.Console.WriteLine("File data: " + contents);
        }
        catch (Exception ex)
        {
            System.Console.WriteLine("Exception choosing file: " + ex.ToString());
        }*/
        
        var result = await FilePicker.PickAsync(new PickOptions
        {
            PickerTitle = "Pick File:",
            FileTypes = FilePickerFileType.Images

        });
        if (result == null)
            return;
        var stream = await result.OpenReadAsync();

    }

}


