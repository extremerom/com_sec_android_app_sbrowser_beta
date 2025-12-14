.class public final synthetic Lcom/sec/android/app/sbrowser/common/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/utils/a;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/utils/a;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/utils/a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/utils/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/a;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/utils/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/utils/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/a;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;->a(Lcom/sec/android/app/sbrowser/common/utils/DeviceIdManager;Landroid/content/Context;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchResult;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchContentCallback;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->d(Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchResult;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchContentCallback;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/a;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/io/File;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/ClipboardUtil$2;->a(Landroid/content/Context;Ljava/io/File;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
