.class public final synthetic LE1/b;
.super Ltb/j;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# static fields
.field public static final a:LE1/b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, LE1/b;

    const-string v5, "<init>()V"

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-class v3, Lz1/L;

    const-string v4, "<init>"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ltb/j;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, LE1/b;->a:LE1/b;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    new-instance p0, Lz1/L;

    invoke-direct {p0}, Lz1/L;-><init>()V

    return-object p0
.end method
