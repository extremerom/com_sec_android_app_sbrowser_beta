.class public final synthetic Lcom/sec/terrace/content/browser/pip/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/content/browser/pip/b;->a:Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;

    iput p2, p0, Lcom/sec/terrace/content/browser/pip/b;->b:I

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lcom/sec/terrace/content/browser/pip/b;->a:Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;

    iget v2, v0, Lcom/sec/terrace/content/browser/pip/b;->b:I

    move-object v0, v1

    move v1, v2

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v0 .. v10}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;->p(Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;ILandroid/view/View;IIIIIIII)V

    return-void
.end method
