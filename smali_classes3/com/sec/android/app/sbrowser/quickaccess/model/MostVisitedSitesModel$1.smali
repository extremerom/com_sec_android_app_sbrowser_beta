.class Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel$1;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;->c(Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesModel;)V

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method
