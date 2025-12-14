.class public final enum LR2/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LR2/c;

.field public static final enum BOOLEAN:LR2/c;

.field public static final enum FLOAT:LR2/c;

.field public static final enum INT:LR2/c;

.field public static final enum LONG:LR2/c;

.field public static final enum STRING:LR2/c;

.field public static final enum STRING_SET:LR2/c;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, LR2/c;

    const-string v1, "STRING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, LR2/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, LR2/c;->STRING:LR2/c;

    new-instance v1, LR2/c;

    const-string v2, "STRING_SET"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, LR2/c;-><init>(Ljava/lang/String;II)V

    sput-object v1, LR2/c;->STRING_SET:LR2/c;

    new-instance v2, LR2/c;

    const-string v3, "INT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, LR2/c;-><init>(Ljava/lang/String;II)V

    sput-object v2, LR2/c;->INT:LR2/c;

    new-instance v3, LR2/c;

    const-string v4, "LONG"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, LR2/c;-><init>(Ljava/lang/String;II)V

    sput-object v3, LR2/c;->LONG:LR2/c;

    new-instance v4, LR2/c;

    const-string v5, "FLOAT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, LR2/c;-><init>(Ljava/lang/String;II)V

    sput-object v4, LR2/c;->FLOAT:LR2/c;

    new-instance v5, LR2/c;

    const-string v6, "BOOLEAN"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, LR2/c;-><init>(Ljava/lang/String;II)V

    sput-object v5, LR2/c;->BOOLEAN:LR2/c;

    filled-new-array/range {v0 .. v5}, [LR2/c;

    move-result-object v0

    sput-object v0, LR2/c;->$VALUES:[LR2/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, LR2/c;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LR2/c;
    .locals 1

    const-class v0, LR2/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LR2/c;

    return-object p0
.end method

.method public static values()[LR2/c;
    .locals 1

    sget-object v0, LR2/c;->$VALUES:[LR2/c;

    invoke-virtual {v0}, [LR2/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LR2/c;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, LR2/c;->mId:I

    return p0
.end method
