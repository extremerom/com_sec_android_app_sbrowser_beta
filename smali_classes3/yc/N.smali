.class public abstract Lyc/N;
.super Lyc/U;
.source "SourceFile"


# static fields
.field public static final b:Lyc/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyc/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyc/N;->b:Lyc/e;

    return-void
.end method


# virtual methods
.method public final d(Lyc/w;)Lyc/Q;
    .locals 0

    invoke-virtual {p1}, Lyc/w;->F0()Lyc/L;

    move-result-object p1

    invoke-virtual {p0, p1}, Lyc/N;->g(Lyc/L;)Lyc/Q;

    move-result-object p0

    return-object p0
.end method

.method public abstract g(Lyc/L;)Lyc/Q;
.end method
