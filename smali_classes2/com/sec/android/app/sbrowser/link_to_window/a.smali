.class public final synthetic Lcom/sec/android/app/sbrowser/link_to_window/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$2;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$2;Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/link_to_window/a;->a:Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$2;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/link_to_window/a;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/link_to_window/a;->c:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/link_to_window/a;->c:Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/link_to_window/a;->a:Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$2;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/link_to_window/a;->b:Landroid/app/Activity;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$2;->a(Lcom/sec/android/app/sbrowser/link_to_window/LinkToWindowManager$2;Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method
