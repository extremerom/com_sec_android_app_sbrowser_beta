.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ZZI)V
    .locals 0

    iput p5, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/m;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/m;->d:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/m;->e:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/m;->b:Z

    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/m;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/m;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/m;->d:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/base/process_launcher/ChildProcessLauncher;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/m;->e:Ljava/lang/Object;

    check-cast v1, Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/m;->b:Z

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/m;->c:Z

    invoke-static {v0, v1, v2, p0}, Lorg/chromium/base/process_launcher/ChildProcessLauncher;->a(Lorg/chromium/base/process_launcher/ChildProcessLauncher;Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;ZZ)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/m;->d:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/m;->e:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/m;->b:Z

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/m;->c:Z

    invoke-static {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->f(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;Landroid/content/Context;ZZ)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/m;->e:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/m;->d:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/m;->b:Z

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/m;->c:Z

    invoke-static {v1, v0, v2, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;->y(Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ReadAloudBaseHandler;Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/model/ReadAloudUtterance;ZZ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
