.class public final synthetic Lcom/sec/android/app/sbrowser/multi_tab/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$BitmapLoader;

.field public final synthetic b:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

.field public final synthetic c:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$BitmapLoader;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/h;->a:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$BitmapLoader;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/h;->b:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/multi_tab/h;->c:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    return-void
.end method


# virtual methods
.method public final onCallback(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/h;->a:Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$BitmapLoader;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/h;->b:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/h;->c:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    invoke-static {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$BitmapLoader;->b(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabController$BitmapLoader;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Landroid/graphics/Bitmap;)V

    return-void
.end method
