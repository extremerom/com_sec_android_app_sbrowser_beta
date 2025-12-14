.class Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->createDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler$2;->this$0:Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler$2;->this$0:Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->a(Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;)Lcom/sec/terrace/browser/TerraceHttpAuthHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->cancel()V

    return-void
.end method
