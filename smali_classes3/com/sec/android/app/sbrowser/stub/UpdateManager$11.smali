.class Lcom/sec/android/app/sbrowser/stub/UpdateManager$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/stub/UpdateManager;->handleForceUpdate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/stub/UpdateManager;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/stub/UpdateManager;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$11;->this$0:Lcom/sec/android/app/sbrowser/stub/UpdateManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$11;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p3, 0x4

    if-eq p2, p3, :cond_1

    const/16 p3, 0x6f

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$11;->this$0:Lcom/sec/android/app/sbrowser/stub/UpdateManager;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/stub/UpdateManager;->a(Lcom/sec/android/app/sbrowser/stub/UpdateManager;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/stub/UpdateManager$11;->val$activity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    const/4 p0, 0x1

    return p0
.end method
