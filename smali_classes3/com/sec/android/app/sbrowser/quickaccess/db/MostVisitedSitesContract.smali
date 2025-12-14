.class public Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesContract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesContract$Columns;
    }
.end annotation


# static fields
.field public static final MOST_VISITED_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.app.sbrowser.beta.mostvisited/most_visited_sites"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/db/MostVisitedSitesContract;->MOST_VISITED_URI:Landroid/net/Uri;

    return-void
.end method
