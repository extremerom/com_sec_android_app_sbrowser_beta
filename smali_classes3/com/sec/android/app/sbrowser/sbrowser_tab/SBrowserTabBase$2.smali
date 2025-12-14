.class Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/Terrace$BitmapRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;->getBitmapAsync(IIIILandroid/graphics/Bitmap$Config;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

.field final synthetic val$callback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase$2;->this$0:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase$2;->val$callback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "SBrowserTabBase"

    const-string v1, "[getBitmapAsync] bitmap received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabBase$2;->val$callback:Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
