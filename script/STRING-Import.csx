using (StreamReader reader = new StreamReader("strings.txt"))
{
    foreach (var str in Data.Strings)
    {
        if (str.Content.Contains("\n") || str.Content.Contains("\r"))
            continue;
        str.Content = reader.ReadLine();
    }
}