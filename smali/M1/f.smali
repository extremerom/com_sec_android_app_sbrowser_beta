.class public final enum LM1/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[LM1/f;

.field public static final enum Flip:LM1/f;

.field public static final enum FoldMain:LM1/f;

.field public static final enum FoldSub:LM1/f;

.field public static final enum MultiFoldMain:LM1/f;

.field public static final enum MultiFoldSub:LM1/f;

.field public static final enum Phone:LM1/f;

.field public static final enum Tablet:LM1/f;


# instance fields
.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, LM1/f;

    const-string v1, "Phone"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, LM1/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, LM1/f;->Phone:LM1/f;

    new-instance v1, LM1/f;

    const-string v3, "FoldMain"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, LM1/f;-><init>(Ljava/lang/String;II)V

    sput-object v1, LM1/f;->FoldMain:LM1/f;

    new-instance v2, LM1/f;

    const-string v3, "FoldSub"

    const/4 v4, 0x2

    const/4 v5, 0x5

    invoke-direct {v2, v3, v4, v5}, LM1/f;-><init>(Ljava/lang/String;II)V

    sput-object v2, LM1/f;->FoldSub:LM1/f;

    new-instance v3, LM1/f;

    const/16 v4, 0x64

    const-string v6, "Flip"

    const/4 v7, 0x3

    invoke-direct {v3, v6, v7, v4}, LM1/f;-><init>(Ljava/lang/String;II)V

    sput-object v3, LM1/f;->Flip:LM1/f;

    new-instance v4, LM1/f;

    const/16 v6, 0x65

    const-string v7, "Tablet"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v8, v6}, LM1/f;-><init>(Ljava/lang/String;II)V

    sput-object v4, LM1/f;->Tablet:LM1/f;

    new-instance v6, LM1/f;

    const-string v7, "MultiFoldMain"

    const/16 v8, 0x66

    invoke-direct {v6, v7, v5, v8}, LM1/f;-><init>(Ljava/lang/String;II)V

    sput-object v6, LM1/f;->MultiFoldMain:LM1/f;

    new-instance v7, LM1/f;

    const/16 v5, 0x67

    const-string v8, "MultiFoldSub"

    const/4 v9, 0x6

    invoke-direct {v7, v8, v9, v5}, LM1/f;-><init>(Ljava/lang/String;II)V

    sput-object v7, LM1/f;->MultiFoldSub:LM1/f;

    move-object v5, v6

    move-object v6, v7

    filled-new-array/range {v0 .. v6}, [LM1/f;

    move-result-object v0

    sput-object v0, LM1/f;->$VALUES:[LM1/f;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, LM1/f;->$ENTRIES:Llb/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LM1/f;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LM1/f;
    .locals 1

    const-class v0, LM1/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LM1/f;

    return-object p0
.end method

.method public static values()[LM1/f;
    .locals 1

    sget-object v0, LM1/f;->$VALUES:[LM1/f;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LM1/f;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, LM1/e;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const-string p0, "phone"

    goto :goto_0

    :pswitch_0
    const-string p0, "multi-fold-sub"

    goto :goto_0

    :pswitch_1
    const-string p0, "multi-fold-main"

    goto :goto_0

    :pswitch_2
    const-string p0, "tablet"

    goto :goto_0

    :pswitch_3
    const-string p0, "flip"

    goto :goto_0

    :pswitch_4
    const-string p0, "fold-sub"

    goto :goto_0

    :pswitch_5
    const-string p0, "fold-main"

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
