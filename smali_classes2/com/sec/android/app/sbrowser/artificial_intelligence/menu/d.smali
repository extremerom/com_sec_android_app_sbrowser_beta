.class public final synthetic Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr1/d;


# instance fields
.field public final synthetic a:Landroid/graphics/PointF;

.field public final synthetic b:Landroid/graphics/PointF;

.field public final synthetic c:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/d;->a:Landroid/graphics/PointF;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/d;->b:Landroid/graphics/PointF;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/d;->c:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;

    return-void
.end method


# virtual methods
.method public final c(Lr1/e;FF)V
    .locals 6

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/d;->c:Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/d;->a:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/d;->b:Landroid/graphics/PointF;

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Lcom/sec/android/app/sbrowser/artificial_intelligence/menu/AiOptionPopupOneUi7;Lr1/e;FF)V

    return-void
.end method
