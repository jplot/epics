class Epics::CDS < Epics::GenericUploadRequest
  def header
    client.header_builder.build(
      nonce: nonce,
      timestamp: timestamp,
      order_type: 'CDS',
      order_attribute: 'DZHNN',
      num_segments: 1
    )
  end
end
