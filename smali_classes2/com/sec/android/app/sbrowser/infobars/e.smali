.class public final synthetic Lcom/sec/android/app/sbrowser/infobars/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/e;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/infobars/e;->b:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/e;->a:Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/e;->b:Landroid/content/Intent;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/infobars/PermissionInfoBar;->b(Landroid/app/Activity;Landroid/content/Intent;Landroid/view/View;)V

    return-void
.end method
