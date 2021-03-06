package com.banno.salat.avro.test

import com.banno.salat.avro._
import global._
import org.apache.avro.Schema

object MapSupportSpec extends SalatAvroSpec {
  import models._

  "a grater for a case class with an map field" should {
    "generate an avro schema" in {
       val schema = grater[Desmond].asAvroSchema
      val recordSchema = schema.getTypes().get(0)
      println(recordSchema)
      recordSchema must containField("h", Schema.Type.MAP)
      recordSchema.getField("h").schema.getValueType.getType must_== Schema.Type.INT
    }
    
    "serialize and deserialize" in {
      val oldDesmond = desmond
      println(serializeToJSON(oldDesmond))
      val newDesmond = serializeAndDeserialize(oldDesmond)
      newDesmond must_== oldDesmond
    }
  }
}
