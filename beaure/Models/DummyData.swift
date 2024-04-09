//
//  DummyData.swift
//  beaure
//
//  Created by Luthfi Misbachul Munir on 03/04/24.
//

import Foundation

let topDealsDataDummy: [Product] = [
    Product(name: "Skintific Moist 6g", image: "Product1", location: "Jakarta Selatan", beforePrice: 299000, afterPrice: 50000, star: 4.8, sold: 10, link: "https://www.tokopedia.com/skintific/flash-skintific-5-panthenol-acne-calming-water-gel-45g?extParam=ivf%3Dfalse%26src%3Dsearch"),
    Product(name: "SKINTIFIC 5X Ceramide Barrier Moisturizer Gel-30g - Rainbow", image: "Product2", location: "Jakarta Timur", beforePrice: 103000, afterPrice: 23000, star: 4.2, sold: 8.2, link: "https://www.tokopedia.com/skintific/skintific-5x-2pcs-ceramide-facial-sooth-repair-moisture-gel-30g-bpom?extParam=ivf%3Dfalse&src=topads"),
    Product(name: "Skintific Msh Niacinamide Brightening Moist. 30 Gr", image: "Product3", location: "BSD", beforePrice: 299000, afterPrice: 50000, star: 3.9, sold: 9.4, link: "https://www.tokopedia.com/skintific/skintific-5x-ceramide-barrier-moisture-gel-30g-30g?extParam=ivf%3Dtrue%26src%3Dsearch%26whid%3D13056835"),
    Product(name: "SKINTIFIC | Skintific Series", image: "Product4", location: "Tangerang Selatan", beforePrice: 42000, afterPrice: 21000, star: 4.7, sold: 3.5, link: "https://shopee.co.id/Skintific-5X-Ceramide-Skin-Barrier-Repair-Moisturize-Gel-30g-i.186214521.21945995869?sp_atk=525d19cc-4598-4c7c-a90a-f40b1b65ee8f&xptdk=525d19cc-4598-4c7c-a90a-f40b1b65ee8f"),
    Product(name: "Skintific Repair Barrier Set Perawatan Kulit Kusam", image: "Product5", location: "Bogor", beforePrice: 320000, afterPrice: 120000, star: 5, sold: 10, link: "https://shopee.co.id/3PCS-Paket-SKINTIFIC-3pcs-Paket-Skincare-with-toner-4D-Hyaluronic-Acid-(HA)-Barrier-Essence-Toner-5X-Ceramide-Barrier-Moisturize-Gel-10-Niacinamide-Brightening-Serum-20Ml-5-Aha-Bha-Pha-Exfoliating-Toner-5X-Ceramide-Soothing-Toner-80ml-i.358403693.19180781041?sp_atk=34f81991-480c-4458-a734-d0e2bdad478b&xptdk=34f81991-480c-4458-a734-d0e2bdad478b")
]

let storeDataDummy: [ECommerce] = [
    ECommerce(name: "Shopee", image: "shopee", voucher: 20),
    ECommerce(name: "Tokopedia", image: "tokopedia", voucher: 12),
    ECommerce(name: "Tiktop Shop", image: "tiktokshop", voucher: 10),
    ECommerce(name: "Sociolla", image: "sociolla", voucher: 24)
]

func createDummyData() -> [CompareProduct] {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd MMMM yyyy"

    return [
        CompareProduct(Product1: CompareSingleProduct(image: "Product1", name: "Skintific Moist 6g", price: 100000),
                       Product2: CompareSingleProduct(image: "Product2", name: "SKINTIFIC 5X Ceramide Barrier Moisturizer Gel-30g - Rainbow", price: 120000),
                       Date: dateFormatter.date(from: "01 January 2022")!),
        CompareProduct(Product1: CompareSingleProduct(image: "Product3", name: "Skintific Msh Niacinamide Brightening Moist. 30 Gr", price: 150000),
                       Product2: CompareSingleProduct(image: "Product4", name: "SKINTIFIC | Skintific Series", price: 120500),
                       Date: dateFormatter.date(from: "01 January 2022")!),
        CompareProduct(Product1: CompareSingleProduct(image: "Product5", name: "Skintific Repair Barrier Set Perawatan Kulit Kusam", price: 120000),
                       Product2: CompareSingleProduct(image: "Product6", name: "Skintific Nurmot Mahmud", price: 1220000),
                       Date: dateFormatter.date(from: "01 January 2022")!),
    ]
}

let compareProductDataDummy = createDummyData()
