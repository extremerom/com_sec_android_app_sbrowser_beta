.class public abstract LR/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lm0/m;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    sget-object v2, Lm0/j;->a:Lm0/j;

    if-lt v0, v1, :cond_0

    sget-object v0, LR/f;->b:LR/f;

    invoke-static {v2, v0}, Landroidx/compose/ui/layout/a;->a(Lm0/m;Lsb/o;)Lm0/m;

    move-result-object v0

    sget-object v1, LR/f;->c:LR/f;

    invoke-static {v0, v1}, Landroidx/compose/ui/layout/a;->a(Lm0/m;Lsb/o;)Lm0/m;

    move-result-object v2

    :cond_0
    sput-object v2, LR/g;->a:Lm0/m;

    return-void
.end method
