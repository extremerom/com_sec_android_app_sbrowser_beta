.class public final synthetic LK1/s;
.super Ltb/j;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# static fields
.field public static final a:LK1/s;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, LK1/s;

    const-string v5, "<init>()V"

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-class v3, LK1/n;

    const-string v4, "<init>"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ltb/j;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, LK1/s;->a:LK1/s;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    new-instance p0, LK1/n;

    invoke-direct {p0}, LK1/n;-><init>()V

    return-object p0
.end method
