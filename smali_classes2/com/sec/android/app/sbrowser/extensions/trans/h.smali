.class public final synthetic Lcom/sec/android/app/sbrowser/extensions/trans/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(JLjava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lcom/sec/android/app/sbrowser/extensions/trans/h;->a:I

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/h;->b:J

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/extensions/trans/h;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;JI)V
    .locals 0

    iput p4, p0, Lcom/sec/android/app/sbrowser/extensions/trans/h;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/h;->c:Ljava/lang/Object;

    iput-wide p2, p0, Lcom/sec/android/app/sbrowser/extensions/trans/h;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/h;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/h;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/h;->b:J

    invoke-static {v1, v2, v0}, Lorg/chromium/base/TraceEvent;->a(JLjava/util/ArrayList;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/h;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/h;->b:J

    invoke-static {v0, v1, v2}, Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;->b(Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;J)V

    return-void

    :pswitch_1
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/h;->b:J

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/h;->c:Ljava/lang/Object;

    check-cast p0, Landroid/app/Activity;

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModificationUtil;->g(JLandroid/app/Activity;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/h;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/h;->b:J

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->d(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;J)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/h;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/h;->b:J

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->r(Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;J)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
