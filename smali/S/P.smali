.class public final LS/P;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# static fields
.field public static final a:LS/P;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LS/P;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltb/m;-><init>(I)V

    sput-object v0, LS/P;->a:LS/P;

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method
