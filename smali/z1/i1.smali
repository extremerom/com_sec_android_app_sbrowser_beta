.class public final Lz1/i1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lz1/i1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz1/i1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lz1/i1;->a:Lz1/i1;

    return-void
.end method


# virtual methods
.method public final a(Lf2/h;)LF1/c;
    .locals 0
    .param p1    # Lf2/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "dimension"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Lf2/d;

    if-eqz p0, :cond_0

    sget-object p0, LF1/c;->EXPAND:LF1/c;

    goto :goto_0

    :cond_0
    sget-object p0, LF1/c;->WRAP:LF1/c;

    :goto_0
    return-object p0
.end method
