.class public final synthetic Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

.field public final synthetic c:Ljava/lang/Long;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;Ljava/lang/Long;ZI)V
    .locals 0

    iput p4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/a;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/a;->b:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/a;->c:Ljava/lang/Long;

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/a;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/a;->d:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/a;->b:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/a;->c:Ljava/lang/Long;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->p(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;Ljava/lang/Long;Z)V

    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/a;->d:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/a;->b:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/a;->c:Ljava/lang/Long;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->n(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;Ljava/lang/Long;Z)V

    return-void

    :pswitch_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/a;->d:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/a;->b:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/a;->c:Ljava/lang/Long;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->i(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;Ljava/lang/Long;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
