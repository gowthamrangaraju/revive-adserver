<?

require ("config.php");


phpAds_checkAccess(phpAds_Admin);


if (isset($bannerID))
{
    db_delete_stats($bannerID);
	Header("Location: clientstats.php");
}  

?>
