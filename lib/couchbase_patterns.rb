require "couchbase_settings"
require "couchbase_doc_store"
require "couchbase_patterns/version"

# active record verbs

  # has_one   
     # 1..1 relationship between this object-document and another object-document
     # coupled with belongs_to Company has_one :office, Office belongs_to Company
                
  # has_many                
     # 1..n relationship between source object-document and another set of object-documents
     # coupled with belongs_to Company has_many :employees, Employee belongs_to Company
  
  # belongs_to              
     # has a foreign key to another object-document (coupled with has_one/has_many)

  # has_and_belongs_to_many :categories

module CouchbasePatterns
  # symbol-attributes to separate out as find_by methods, 
  # lookup attribute values MUST BE UNIQUE (i.e. email, phone number, uid, social network id, social security number, etc.)
  def lookup_by(*attributes)
    attributes.each do |a|
      puts a
      self.class.class_eval %Q{
        def find_by_#{a} (&block)
          yield(self) if block_given?
        end
      }        
    end # attributes.each
  end # lookup_by
end
