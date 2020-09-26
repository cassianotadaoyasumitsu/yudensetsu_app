prawn_document do |pdf|
  pdf.text 'Puntos', align: :center
  pdf.move_down 20
  pdf.table current_user.puntos.collect{|p| [p.id, p.in.strftime("%d/%m/%Y"),
    p.company.name, p.in.strftime("%k:%M"), p.out.strftime("%k:%M"),
    p.note]}
end
