//
//  PodcastCell.swift
//  PodcastsCourse
//
//  Created by Maks Kokos on 12.07.2022.
//

import UIKit
import SDWebImage

class PodcastCell: UITableViewCell {
    
    @IBOutlet weak var podcastImageView: UIImageView!
    
    @IBOutlet weak var trackNameLabel: UILabel!
    @IBOutlet weak var artistNameLabel: UILabel!
    @IBOutlet weak var episodeCountLabel: UILabel!
    
    var podcast: Podcast! {
        didSet {
            podcastImageView.layer.cornerRadius = 8
            trackNameLabel.text = podcast.trackName
            trackNameLabel.numberOfLines = 2
            artistNameLabel.text = podcast.artistName
            artistNameLabel.numberOfLines = 2
            episodeCountLabel.text = "\(podcast.trackCount ?? 0) Episodes"
            guard let url = URL(string: podcast.artworkUrl600 ?? "") else { return }
            podcastImageView.sd_setImage(with: url, completed: nil)
        }
    }
     
}
