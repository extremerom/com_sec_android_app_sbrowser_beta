.class public final synthetic LB1/c;
.super Ltb/j;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# static fields
.field public static final a:LB1/c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, LB1/c;

    const-string v5, "<init>()V"

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-class v3, LB1/a;

    const-string v4, "<init>"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ltb/j;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, LB1/c;->a:LB1/c;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    new-instance p0, LB1/a;

    invoke-direct {p0}, LB1/a;-><init>()V

    return-object p0
.end method
