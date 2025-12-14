.class public final Lt/S0;
.super Landroid/util/IntProperty;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lt/T0;


# direct methods
.method public constructor <init>(Lt/T0;)V
    .locals 0

    iput-object p1, p0, Lt/S0;->a:Lt/T0;

    const-string p1, "visual_progress"

    invoke-direct {p0, p1}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lt/T0;

    iget p0, p1, Lt/T0;->e:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final setValue(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lt/T0;

    iput p2, p1, Lt/T0;->e:I

    iget-object p0, p0, Lt/S0;->a:Lt/T0;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
