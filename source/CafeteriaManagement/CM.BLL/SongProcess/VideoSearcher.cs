using CM.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using YouTubeSearch;

namespace CafeteriaManagement
{
    public class VideoSearcher
    {
        public static List<Video> videos = new List<Video>();

        public static List<Video> GetListOfVideosFrom(string userInput)
        {
            List<VideoSearchComponents> listFetchVideo = new VideoSearch().GetVideos(userInput, 1).Result;
            Console.WriteLine(listFetchVideo);
            for (int i = 0; i < listFetchVideo.Count; i++)
            {
                videos.Add(new Video
                {
                    Title = Encoding.UTF8.GetString(Encoding.Default.GetBytes(listFetchVideo[i].getTitle())),
                    Author = Encoding.UTF8.GetString(Encoding.Default.GetBytes(listFetchVideo[i].getAuthor())),
                    Duration = listFetchVideo[i].getDuration(),
                    Url = listFetchVideo[i].getUrl(),
                });

            }
        
            return videos;
        }
    }
}
