.class public final synthetic Lcom/sec/android/app/sbrowser/common/sites/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/sites/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/sites/a;->b:Landroid/app/Activity;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/common/sites/a;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLandroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/sites/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/sites/a;->c:Z

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/sites/a;->b:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/sites/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/sites/a;->b:Landroid/app/Activity;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/sites/a;->c:Z

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->p(Landroid/app/Activity;Z)V

    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/sites/a;->c:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sites/a;->b:Landroid/app/Activity;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkBarUtil;->a(Landroid/app/Activity;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
