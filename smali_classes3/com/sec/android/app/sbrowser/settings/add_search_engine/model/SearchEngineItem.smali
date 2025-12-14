.class public Lcom/sec/android/app/sbrowser/settings/add_search_engine/model/SearchEngineItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mFavIcon:Landroid/graphics/Bitmap;

.field private final mLabel:Ljava/lang/String;

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/model/SearchEngineItem;->mLabel:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/model/SearchEngineItem;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/model/SearchEngineItem;->mFavIcon:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public getFavIcon()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/model/SearchEngineItem;->mFavIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/model/SearchEngineItem;->mLabel:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/add_search_engine/model/SearchEngineItem;->mName:Ljava/lang/String;

    return-object p0
.end method
