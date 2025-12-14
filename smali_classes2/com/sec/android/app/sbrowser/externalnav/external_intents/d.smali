.class public final synthetic Lcom/sec/android/app/sbrowser/externalnav/external_intents/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic d:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;

.field public final synthetic e:Landroid/content/Intent;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;ZI)V
    .locals 0

    iput p7, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/d;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/d;->b:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/d;->d:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/d;->e:Landroid/content/Intent;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/d;->f:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/d;->g:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/d;->a:I

    packed-switch v1, :pswitch_data_0

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/d;->d:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/d;->e:Landroid/content/Intent;

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/d;->b:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/d;->f:Ljava/lang/String;

    iget-boolean v7, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/d;->g:Z

    move-object/from16 v8, p1

    move/from16 v9, p2

    invoke-static/range {v2 .. v9}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->o(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;ZLandroid/content/DialogInterface;I)V

    return-void

    :pswitch_0
    iget-object v9, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v10, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/d;->d:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;

    iget-object v11, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/d;->e:Landroid/content/Intent;

    iget-object v8, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/d;->b:Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;

    iget-object v12, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/d;->f:Ljava/lang/String;

    iget-boolean v13, v0, Lcom/sec/android/app/sbrowser/externalnav/external_intents/d;->g:Z

    move-object/from16 v14, p1

    move/from16 v15, p2

    invoke-static/range {v8 .. v15}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->b(Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationParams;Landroid/content/Intent;Ljava/lang/String;ZLandroid/content/DialogInterface;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
