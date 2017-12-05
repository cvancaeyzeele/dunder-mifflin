User.create!([
  {name: nil, admin: true, email: "cvancaeyzeele@gmail.com", encrypted_password: "$2a$11$M2kDrTUB.b7TCpEJeIaclu.NXfkzs/jm4vSnOj1afoz0u6veh1SaO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 6, current_sign_in_at: "2017-11-23 03:03:59", last_sign_in_at: "2017-11-19 21:31:51", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  {name: nil, admin: nil, email: "test@example.com", encrypted_password: "$2a$11$/Z0fAD3LCsakdyedkb2clOd0uSbfeeGc/uYaaoFsjQmmAveJ2cg5e", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2017-12-04 00:44:29", last_sign_in_at: "2017-11-29 16:49:15", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"}
])
Category.create!([
  {name: "Paper", description: "Paper and paper products"},
  {name: "Supplies", description: "Pens, staplers, markers, and more"},
  {name: "Printers", description: "Printers made by Sabre"}
])
Product.create!([
  {name: "Copy Paper, 20lb, 8-1/2 x 11, Case", description: "Dunder Mifflin copy paper comes with thousands of sheets of paper, making it the ideal addition to your supply cabinet. Each page features a bright white finish suitable for all types of documents, from business flyers to progress reports. With its standard size and weight, Dunder Mifflin paper can be used in almost any copier or printer model.", price: "51.96", category_id: 1, image: "copy-paper-case.png", discount: 0.0, featured: true},
  {name: "FSC-Certified Copy Paper, 20lb, 8-1/2 x 11, Case", description: "For busy offices, the Dunder Mifflin FSC-certified copy paper case helps ensure that you'll always have a supply on hand for large print jobs or everyday documentation requirements. It comes with standard white paper that can be used in all types of office equipment, so you won't need to worry about finding different options for each machine. With its bright white surface, the Dunder Mifflin paper enables you to create brilliant, professional prints.", price: "56.96", category_id: 1, image: "copy-paper-case.png", discount: 0.0, featured: false},
  {name: "Multiuse Paper, 24lb, 11 x 17, Ream", description: "500 sheets per ream. Manufactured with ColorLok® Technology—produces colours up to 30% more vivid and blacks up to 60% bolder than ordinary papers and dries up to three times faster for fewer smears. For use in Sabre copiers and Sabre laser and inkjet printers.", price: "32.5", category_id: 1, image: "multiuse-paper.png", discount: 0.0, featured: false},
  {name: "Colour Laser Glossy Paper, 8-1/2 x 11, Ream", description: "300 sheets per ream. This gloss-coated paper allows you to create slick, high-quality documents that look like printed pieces. Provides optimum imaging and trouble-free performance on all Sabre colour laser printers and copiers. Ideal for sell sheets, brochures, flyers and other presentations in which you need images to look their best.", price: "19.35", category_id: 1, image: "multiuse-paper.png", discount: 0.0, featured: false},
  {name: "Desktop Stapler Combo Pack, Black, 20-Sheet Capacity", description: "No-slip rubberized press point. Full rubber base. Durable plastic construction. Combo pack includes 1,250 staples and a claw staple remover. Staples up to 20 sheets.", price: "9.53", category_id: 2, image: "stapler.png", discount: 0.0, featured: false},
  {name: "Standard Staples, 25000/Box", description: "Quality staples at an economical price. 1/4\" leg length. Beveled tips 25,000 staples per box.", price: "8.63", category_id: 2, image: "staples.png", discount: 0.33, featured: false},
  {name: "Stick Ballpoint Pens, 1.0mm, Assorted, 50/Pack", description: "Sign documents or cards with this dependable white ballpoint made by Dunder Mifflin. Whatever you write down next, this 1 mm medium sized tip is just the right size.", price: "5.0", category_id: 2, image: "pens.png", discount: 0.25, featured: true},
  {name: "Sabre WorkForce SB-16500 EcoTank Wireless Inkjet Printer", description: "Save on ink costs in the office with the Sabre WorkForce SB-16500 EcoTank wireless all-in-one printer. This cartridge-free printer features supersized ink tanks that are easy to fill, saving you the hassle and money of replacing cartridges. It prints, copies, scans, and faxes, and features wireless printing options for convenient use.", price: "1199.99", category_id: 4, image: "sb16500.png", discount: 0.0, featured: true},
  {name: "Sabre WorkForce SB-4750 EcoTank Wireless Inkjet Printer", description: "Your powerful partner in productivity, the Sabre WorkForce SB-4750 inkjet printer can do it all. Featuring a high capacity 250-sheet paper tray, the SB-4750 prints, scans, copies, and faxes. Cartridge-free printing and easy-fill ink tanks make this printer a breeze to work with, and built-in Wi-Fi lets you print from any computer or smart device.", price: "599.99", category_id: 4, image: "sb4750.png", discount: 0.0, featured: false}
])
Page.create!([
  {title: "About Us", content: "stuff"},
  {title: "Contact Us", content: "Don't"}
])
Province.create!([
  {name: "AB", pst: 0.0, gst: 0.05, hst: 0.0},
  {name: "BC", pst: 0.07, gst: 0.05, hst: 0.0},
  {name: "MB", pst: 0.08, gst: 0.05, hst: 0.0},
  {name: "NB", pst: 0.0, gst: 0.05, hst: 0.1},
  {name: "NL", pst: 0.0, gst: 0.05, hst: 0.1},
  {name: "NS", pst: 0.0, gst: 0.05, hst: 0.0},
  {name: "NT", pst: 0.0, gst: 0.05, hst: 0.1},
  {name: "NU", pst: 0.0, gst: 0.05, hst: 0.0},
  {name: "ON", pst: 0.0, gst: 0.05, hst: 0.08},
  {name: "PE", pst: 0.0, gst: 0.05, hst: 0.1},
  {name: "QC", pst: 0.09975, gst: 0.05, hst: 0.0},
  {name: "SK", pst: 0.06, gst: 0.05, hst: 0.0},
  {name: "YT", pst: 0.0, gst: 0.05, hst: 0.0}
])
Status.create!([
  {name: "In Progress"},
  {name: "Paid"},
  {name: "Shipped"},
  {name: "Delivered"}
])
