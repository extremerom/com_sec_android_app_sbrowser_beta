.class public final synthetic LPc/j;
.super Ltb/j;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# static fields
.field public static final a:LPc/j;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v6, LPc/j;

    const-string v5, "createSegment(JLkotlinx/coroutines/channels/ChannelSegment;)Lkotlinx/coroutines/channels/ChannelSegment;"

    const/4 v2, 0x1

    const/4 v1, 0x2

    const-class v3, LPc/k;

    const-string v4, "createSegment"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ltb/j;-><init>(IILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, LPc/j;->a:LPc/j;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    move-object v3, p2

    check-cast v3, LPc/q;

    sget-object p0, LPc/k;->a:LPc/q;

    new-instance p0, LPc/q;

    iget-object v4, v3, LPc/q;->e:LPc/i;

    invoke-static {v4}, Ltb/k;->c(Ljava/lang/Object;)V

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, LPc/q;-><init>(JLPc/q;LPc/i;I)V

    return-object p0
.end method
