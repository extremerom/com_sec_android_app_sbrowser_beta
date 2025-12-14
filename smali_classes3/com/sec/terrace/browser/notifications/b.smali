.class public final synthetic Lcom/sec/terrace/browser/notifications/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/Callback;


# instance fields
.field public final synthetic a:Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:Landroid/graphics/Bitmap;

.field public final synthetic j:Landroid/graphics/Bitmap;

.field public final synthetic k:[I

.field public final synthetic l:J

.field public final synthetic m:Z

.field public final synthetic n:[Ljava/lang/String;

.field public final synthetic o:Landroid/graphics/Bitmap;

.field public final synthetic p:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[IJZ[Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/sec/terrace/browser/notifications/b;->a:Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;

    move-object v1, p2

    iput-object v1, v0, Lcom/sec/terrace/browser/notifications/b;->b:Ljava/lang/String;

    move v1, p3

    iput v1, v0, Lcom/sec/terrace/browser/notifications/b;->c:I

    move-object v1, p4

    iput-object v1, v0, Lcom/sec/terrace/browser/notifications/b;->d:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/sec/terrace/browser/notifications/b;->e:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/sec/terrace/browser/notifications/b;->f:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/sec/terrace/browser/notifications/b;->g:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/sec/terrace/browser/notifications/b;->h:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/sec/terrace/browser/notifications/b;->i:Landroid/graphics/Bitmap;

    move-object v1, p10

    iput-object v1, v0, Lcom/sec/terrace/browser/notifications/b;->j:Landroid/graphics/Bitmap;

    move-object v1, p11

    iput-object v1, v0, Lcom/sec/terrace/browser/notifications/b;->k:[I

    move-wide v1, p12

    iput-wide v1, v0, Lcom/sec/terrace/browser/notifications/b;->l:J

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/sec/terrace/browser/notifications/b;->m:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/sec/terrace/browser/notifications/b;->n:[Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/sec/terrace/browser/notifications/b;->o:Landroid/graphics/Bitmap;

    move/from16 v1, p17

    iput v1, v0, Lcom/sec/terrace/browser/notifications/b;->p:I

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v18, p1

    check-cast v18, Ljava/lang/Boolean;

    iget-object v15, v0, Lcom/sec/terrace/browser/notifications/b;->n:[Ljava/lang/String;

    iget-object v1, v0, Lcom/sec/terrace/browser/notifications/b;->o:Landroid/graphics/Bitmap;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/sec/terrace/browser/notifications/b;->a:Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;

    iget-object v2, v0, Lcom/sec/terrace/browser/notifications/b;->b:Ljava/lang/String;

    iget v3, v0, Lcom/sec/terrace/browser/notifications/b;->c:I

    iget-object v4, v0, Lcom/sec/terrace/browser/notifications/b;->d:Ljava/lang/String;

    iget-object v5, v0, Lcom/sec/terrace/browser/notifications/b;->e:Ljava/lang/String;

    iget-object v6, v0, Lcom/sec/terrace/browser/notifications/b;->f:Ljava/lang/String;

    iget-object v7, v0, Lcom/sec/terrace/browser/notifications/b;->g:Ljava/lang/String;

    iget-object v8, v0, Lcom/sec/terrace/browser/notifications/b;->h:Ljava/lang/String;

    iget-object v9, v0, Lcom/sec/terrace/browser/notifications/b;->i:Landroid/graphics/Bitmap;

    iget-object v10, v0, Lcom/sec/terrace/browser/notifications/b;->j:Landroid/graphics/Bitmap;

    iget-object v11, v0, Lcom/sec/terrace/browser/notifications/b;->k:[I

    iget-wide v12, v0, Lcom/sec/terrace/browser/notifications/b;->l:J

    iget-boolean v14, v0, Lcom/sec/terrace/browser/notifications/b;->m:Z

    iget v0, v0, Lcom/sec/terrace/browser/notifications/b;->p:I

    move/from16 v17, v0

    invoke-static/range {v1 .. v18}, Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;->a(Lcom/sec/terrace/browser/notifications/TinNotificationPlatformBridge;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;[IJZ[Ljava/lang/String;Landroid/graphics/Bitmap;ILjava/lang/Boolean;)V

    return-void
.end method
