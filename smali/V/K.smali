.class public final LV/K;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    iput p1, p0, LV/K;->a:I

    iput p2, p0, LV/K;->b:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    new-instance v0, LV/J;

    iget v1, p0, LV/K;->a:I

    iget p0, p0, LV/K;->b:I

    invoke-direct {v0, v1, p0}, LV/J;-><init>(II)V

    return-object v0
.end method
