.class Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler$4;->this$0:Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler$4;->this$0:Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->a(Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;)Lcom/sec/terrace/browser/TerraceHttpAuthHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler$4;->this$0:Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->d(Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler$4;->this$0:Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->c(Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/sec/terrace/browser/TerraceHttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
