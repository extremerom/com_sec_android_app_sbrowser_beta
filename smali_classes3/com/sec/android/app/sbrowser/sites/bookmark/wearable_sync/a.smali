.class public final synthetic Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR5/e;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/a;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/a;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/a;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/io/InputStream;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/a;->b:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableService;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/wearable/ChannelClient$Channel;

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableService;->b(Lcom/google/android/gms/wearable/ChannelClient$Channel;Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableService;Ljava/io/InputStream;)V

    return-void

    :pswitch_0
    check-cast p1, Lcom/google/android/gms/wearable/ChannelClient$Channel;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/a;->b:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper$1;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/wearable/ChannelClient$Channel;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
