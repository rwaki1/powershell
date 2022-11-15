
(get-acl 'C:\Program Files\ArcGIS').access | ft IdentityReference,FileSystemRights,AccessControlType,IsInherited,InheritanceFlags -auto
(get-acl 'C:\Python*').access | ft IdentityReference,FileSystemRights,AccessControlType,IsInherited,InheritanceFlags -auto
(get-acl 'C:\arcgisserver').access | ft IdentityReference,FileSystemRights,AccessControlType,IsInherited,InheritanceFlags -auto