SELECT t.Name as Track, a.Title as Album, mt.Name as MediaType
FROM Track t
JOIN  Album a ON t.AlbumId = a.AlbumId
JOIN MediaType mt ON mt.MediaTypeId = t.MediaTypeId
JOIN  Genre g ON g.GenreId = t.GenreId