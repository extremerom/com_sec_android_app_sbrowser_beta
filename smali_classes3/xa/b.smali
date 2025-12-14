.class public final synthetic Lxa/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:J

.field public final synthetic g:J


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;ILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lxa/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxa/b;->b:Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;

    iput p2, p0, Lxa/b;->c:I

    iput-object p3, p0, Lxa/b;->d:Ljava/lang/String;

    iput-object p4, p0, Lxa/b;->e:Ljava/lang/String;

    iput-wide p5, p0, Lxa/b;->f:J

    iput-wide p7, p0, Lxa/b;->g:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;JILjava/lang/String;Ljava/lang/String;J)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lxa/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxa/b;->b:Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;

    iput-wide p2, p0, Lxa/b;->f:J

    iput p4, p0, Lxa/b;->c:I

    iput-object p5, p0, Lxa/b;->d:Ljava/lang/String;

    iput-object p6, p0, Lxa/b;->e:Ljava/lang/String;

    iput-wide p7, p0, Lxa/b;->g:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lxa/b;->a:I

    packed-switch v1, :pswitch_data_0

    iget-object v4, v0, Lxa/b;->d:Ljava/lang/String;

    iget-object v5, v0, Lxa/b;->e:Ljava/lang/String;

    iget-object v2, v0, Lxa/b;->b:Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;

    iget v3, v0, Lxa/b;->c:I

    iget-wide v6, v0, Lxa/b;->f:J

    iget-wide v8, v0, Lxa/b;->g:J

    invoke-static/range {v2 .. v9}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;->f(Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;ILjava/lang/String;Ljava/lang/String;JJ)V

    return-void

    :pswitch_0
    iget v11, v0, Lxa/b;->c:I

    iget-object v12, v0, Lxa/b;->d:Ljava/lang/String;

    iget-object v10, v0, Lxa/b;->b:Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;

    iget-wide v14, v0, Lxa/b;->f:J

    iget-object v13, v0, Lxa/b;->e:Ljava/lang/String;

    iget-wide v0, v0, Lxa/b;->g:J

    move-wide/from16 v16, v0

    invoke-static/range {v10 .. v17}, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;->d(Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteModel;ILjava/lang/String;Ljava/lang/String;JJ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
