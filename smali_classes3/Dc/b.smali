.class public final LDc/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# static fields
.field public static final a:LDc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LDc/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LDc/b;->a:LDc/b;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lyc/d0;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lyc/w;->F0()Lyc/L;

    move-result-object p0

    instance-of p0, p0, Llc/b;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
