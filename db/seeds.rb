# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Office.create!(name: 'Flatiron General')
Doctor.create!(name: 'Dr.Meredith Grey', username: 'MGrey', password: 'Seattle', email: 'mgrey@greysloan.com', speciality: 'General Surgery', office_id: Office.first.id)

profile1={
          current_medications: ['Losartan'], 
          medical_conditions: ['Hypertension'],
          allergies: ['Penicillin'],
          surgeries: ['Appendectomy'],
          history: ['No History'],
          smoking: false,
          vitals: {
            height: 64,
            weight: 117,
            temperature: 98.6,
            oxygen: 99,
            bp: '118/84',
            hr: 72,
            rr: 16,
          }
        }
Patient.create!(name: 'Cristina Yang', profile: profile1.to_json, comments: 'none', has_covid: false, office_id: Office.first.id, age: 32, gender: 'Female', floor: 'Floor 2 Room 205', reason_for_visit: 'Abdominal Pain', priority: false, image: 'https://www.cheatsheet.com/wp-content/uploads/2020/07/Sandra-Oh-Cristina-Yang-Greys-Anatomy-1024x576.jpg' )



profile2={
    current_medications: ['Atorvastatin'], 
    medical_conditions: ['Hypercholesterolemia'],
    allergies: ['None'],
    surgeries: ['Tonsillectomy'],
    history: ['Dad has HTN'],
    smoking: true,
    vitals: {
      height: 72,
      weight: 198,
      temperature: 98.8,
      oxygen: 98,
      bp: '125/87',
      hr: 88,
      rr: 16,
    }
  }
Patient.create!(name: 'Alex Karev', profile: profile2.to_json, comments: 'none', has_covid: false, office_id: Office.first.id, age: 28, gender: 'Male', floor: 'Floor 2 Room 209', reason_for_visit: 'Headache', priority: false, image: 'https://tvguide1.cbsistatic.com/mediabin/showcards/celebs/j-l/thumbs/justin-chambers2_sc_768x1024.png')



profile3={
    current_medications: ['Metformin'], 
    medical_conditions: ['Type II Diabetes'],
    allergies: ['None'],
    surgeries: ['Breast Augmentation'],
    history: ['Mom has HTN'],
    smoking: false,
    vitals: {
      height: 63,
      weight: 124,
      temperature: 98.7,
      oxygen: 97,
      bp: '105/76',
      hr: 71,
      rr: 16,
    }
  }
Patient.create!(name: 'Addison Montegomery', profile: profile3.to_json, comments: 'none', has_covid: false, office_id: Office.first.id, age: 34, gender: 'Female', floor: 'Floor 2 Room 207', reason_for_visit: 'Ear Pain', priority: false, image: 'https://upload.wikimedia.org/wikipedia/commons/4/40/Kate_Walsh_2011_crop.jpg')



profile4={
    current_medications: ['None'], 
    medical_conditions: ['None'],
    allergies: ['Penicillin'],
    surgeries: ['None'],
    history: ['Dad has HTN'],
    smoking: false,
    vitals: {
      height: 70,
      weight: 170,
      temperature: 98.8,
      oxygen: 97,
      bp: '140/92',
      hr: 99,
      rr: 18,
    }
  }
Patient.create!(name: 'Jackson Avery', profile: profile4.to_json, comments: 'none', has_covid: false, office_id: Office.first.id, age: 28, gender: 'Male', floor: 'Floor 2 Room 201', reason_for_visit: 'Cough', priority: false, image: 'https://i.pinimg.com/originals/6d/0d/74/6d0d74c65ea0b2edda0ba32f0cc789cc.jpg')



profile5={
    current_medications: ['Alprazolam'], 
    medical_conditions: ['Anxiety'],
    allergies: ['Sulfa Drugs'],
    surgeries: ['Cataract Surgery'],
    history: ['Mom & Dad both have HTN and DM'],
    smoking: false,
    vitals: {
      height: 73,
      weight: 205,
      temperature: 98.8,
      oxygen: 6,
      bp: '134/82',
      hr: 84,
      rr: 17,
    }
  }
Patient.create!(name: 'Richard Webber', profile: profile5.to_json, comments: 'none', has_covid: true, office_id: Office.first.id, age: 59, gender: 'Male', floor: 'Floor 1 Room 103', reason_for_visit: 'Difficulty Breathing', priority: false, image: 'https://img.srgcdn.com/e//WW94bnY0cmNDYWhjRFYyNjN5NW0uanBn.jpg' )


profile6={
  current_medications: ['Imitrex'], 
  medical_conditions: ['Migraines'],
  allergies: ['Ibuprofen'],
  surgeries: ['None'],
  history: ['Dad has HTN.'],
  smoking: false,
  vitals: {
    height: 62,
    weight: 122,
    temperature: 98.9,
    oxygen: 98,
    bp: '138/88',
    hr: 81,
    rr: 17,
  }
}
Patient.create!(name: 'April Kepner', profile: profile6.to_json, comments: 'none', has_covid: false, office_id: Office.first.id, age: 29, gender: 'Female', floor: 'Floor 2 Room 208', reason_for_visit: 'Left Ankle Pain', priority: false, image: 'https://pm1.narvii.com/6764/95aaa045115861ba8344b9d35cb60aa2adc75704v2_00.jpg')

profile7={
  current_medications: ['Sertraline'], 
  medical_conditions: ['PTSD'],
  allergies: ['Penicillin'],
  surgeries: ['Colonoscopy'],
  history: ['Mom and Dad both has HTN and DM'],
  smoking: false,
  vitals: {
    height: 72,
    weight: 215,
    temperature: 98.9,
    oxygen: 97,
    bp: '112/78',
    hr: 67,
    rr: 16,
  }
}
Patient.create!(name: 'Owen Hunt', profile: profile7.to_json, comments: 'none', has_covid: true, office_id: Office.first.id, age: 42, gender: 'Male', floor: 'Floor 1 Room 113', reason_for_visit: 'Chest Pain', priority: false, image: 'https://imgix.bustle.com/uploads/image/2018/4/17/364c3128-640e-47a3-910c-4c7b84e38f9d-147531_4295.jpg')



profile8={
  current_medications: ['None'], 
  medical_conditions: ['Anxiety'],
  allergies: ['Sulda Drugs'],
  surgeries: ['Tonsillectomy'],
  history: ['Dad has DM'],
  smoking: false,
  vitals: {
    height: 68,
    weight: 163,
    temperature: 99.1,
    oxygen: 100,
    bp: '120/84',
    hr: 82,
    rr: 16,
  }
}
Patient.create!(name: 'George OMalley', profile: profile8.to_json, comments: 'none', has_covid: false, office_id: Office.first.id, age: 30, gender: 'Male', floor: 'Floor 2 Room 216', reason_for_visit: 'Eye Pain', priority: false, image: 'https://i.pinimg.com/originals/76/b8/74/76b8742e5988f5bb8b51eb6f2b5b3c45.jpg')

profile9={
  current_medications: ['Glipizide'], 
  medical_conditions: ['Type II Diabetes'],
  allergies: ['None'],
  surgeries: ['Brain Surgery for Tumor'],
  history: ['Brain Tumor'],
  smoking: false,
  vitals: {
    height: 62,
    weight: 110,
    temperature: 98.3,
    oxygen: 99,
    bp: '114/81',
    hr: 79,
    rr: 16,
  }
}
Patient.create!(name: 'Amelia Shepherd', profile: profile9.to_json, comments: 'none', has_covid: true, office_id: Office.first.id, age: 35, gender: 'Female', floor: 'Floor 1 Room 101', reason_for_visit: 'Allergic Reaction', priority: false, image: 'https://www.thewrap.com/wp-content/uploads/2017/10/greys-anatomy-amelia-shepherd.jpg')

profile10={
  current_medications: ['None'], 
  medical_conditions: ['Anxiety'],
  allergies: ['None'],
  surgeries: ['GSW to the left leg in 2012'],
  history: ['No History'],
  smoking: false,
  vitals: {
    height: 69,
    weight: 132,
    temperature: 98.4,
    oxygen: 99,
    bp: '113/71',
    hr: 69,
    rr: 16,
  }
}
Patient.create!(name: 'Teddy Altman', profile: profile10.to_json, comments: 'none', has_covid: false, office_id: Office.first.id, age: 32, gender: 'Female', floor: 'Floor 2 Room 214', reason_for_visit: 'Nausea', priority: false, image: 'https://imgix.bustle.com/uploads/image/2017/10/5/03913a43-afc5-4cfd-8292-f7dffdf0cd1e-147295_2507.jpg')