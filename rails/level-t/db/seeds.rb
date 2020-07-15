# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Link.create(
    [
        {author: "Virgile & co", title: "Open Source Politics", body: "https://opensourcepolitics.eu"},
        {author: "Cloudron", title: "Cloudron", body: "https://cloudron.io"},
        {author: "notion", title: "Notion", body: "https://notion.so"},
        {author: "Jeff Atwood and Co", title: "Discourse", body: "https://discourse.org"},
        {author: "Max Wu", title: "CodiMD", body: "https://demo.codim.org"},
        {author: "J'ai bouffé son nom", title: "Indie Hosters", body: "https://indie.host"}
    ]
)