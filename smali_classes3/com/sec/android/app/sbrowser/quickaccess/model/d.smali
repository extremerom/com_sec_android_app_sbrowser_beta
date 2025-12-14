.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/model/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesTerraceDataSource$Observer;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/d;->a:Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;

    return-void
.end method


# virtual methods
.method public final onDataChanged(Ljava/util/List;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/d;->a:Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/MostVisitedSitesRepository;->onTerraceDataChanged(Ljava/util/List;)V

    return-void
.end method
