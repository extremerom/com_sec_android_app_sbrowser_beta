.class Lorg/chromium/ui/widget/Toast$1;
.super Landroid/content/ContextWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/ui/widget/Toast;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/widget/Toast;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/widget/Toast;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/ui/widget/Toast$1;->this$0:Lorg/chromium/ui/widget/Toast;

    invoke-direct {p0, p2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getApplicationInfo()Landroid/content/pm/ApplicationInfo;
    .locals 2

    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-super {p0}, Landroid/content/ContextWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    iget p0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const v1, -0x20000001

    and-int/2addr p0, v1

    iput p0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    return-object v0
.end method
