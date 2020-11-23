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
Patient.create!(name: 'Cristina Yang', profile: profile1.to_json, comments: 'none', has_covid: false, office_id: Office.first.id, age: 32, gender: 'Female', floor: 'Floor 2 Room 205', reason_for_visit: 'Abdominal Pain', priority: false )



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
Patient.create!(name: 'Alex Karev', profile: profile2.to_json, comments: 'none', has_covid: false, office_id: Office.first.id, age: 28, gender: 'Male', floor: 'Floor 2 Room 209', reason_for_visit: 'Headache', priority: false )



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
Patient.create!(name: 'Addison Montegomery', profile: profile3.to_json, comments: 'none', has_covid: false, office_id: Office.first.id, age: 34, gender: 'Female', floor: 'Floor 2 Room 207', reason_for_visit: 'Ear Pain', priority: false  )



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
Patient.create!(name: 'Jackson Avery', profile: profile4.to_json, comments: 'none', has_covid: false, office_id: Office.first.id, age: 28, gender: 'Male', floor: 'Floor 2 Room 201', reason_for_visit: 'Cough', priority: false  )



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
Patient.create!(name: 'Richard Webber', profile: profile5.to_json, comments: 'none', has_covid: true, office_id: Office.first.id, age: 59, gender: 'Male', floor: 'Floor 1 Room 103', reason_for_visit: 'Difficulty Breathing', priority: false  )



