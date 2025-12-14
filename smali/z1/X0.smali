.class public final synthetic Lz1/X0;
.super Ltb/j;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# static fields
.field public static final a:Lz1/X0;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, Lz1/X0;

    const-string v5, "<init>()V"

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-class v3, Lz1/L;

    const-string v4, "<init>"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ltb/j;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lz1/X0;->a:Lz1/X0;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    new-instance p0, Lz1/L;

    invoke-direct {p0}, Lz1/L;-><init>()V

    return-object p0
.end method
