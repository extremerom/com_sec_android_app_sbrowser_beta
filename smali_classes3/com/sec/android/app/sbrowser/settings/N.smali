.class public final synthetic Lcom/sec/android/app/sbrowser/settings/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$FetchContentCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;

.field public final synthetic c:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/settings/N;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/N;->b:Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/N;->c:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onContentFetched(Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 9

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/N;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/N;->b:Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/N;->c:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->b(Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/N;->b:Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/settings/N;->c:Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-static/range {v3 .. v8}, Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;->a(Lcom/sec/android/app/sbrowser/settings/SettingsSearchEngineController;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineItemHolder;Lcom/sec/android/app/sbrowser/searchengine/SearchEngineIconFetcher$ContentType;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
