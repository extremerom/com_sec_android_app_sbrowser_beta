.class public final synthetic Lcom/sec/android/app/sbrowser/main_view/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$1;

.field public final synthetic b:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

.field public final synthetic c:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$1;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/O;->a:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$1;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/O;->b:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/O;->c:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    return-void
.end method


# virtual methods
.method public final onCallback(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/O;->a:Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$1;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/O;->b:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/O;->c:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-static {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$1;->a(Lcom/sec/android/app/sbrowser/main_view/MainViewPhone$1;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/graphics/Bitmap;)V

    return-void
.end method
