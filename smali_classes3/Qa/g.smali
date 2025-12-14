.class public final enum LQa/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LQa/g;

.field public static final enum ATTRIBUTE_NAME:LQa/g;

.field public static final enum ATTRIBUTE_VALUE:LQa/g;

.field public static final enum ELEMENT_BEGIN:LQa/g;

.field public static final enum ELEMENT_END:LQa/g;

.field public static final enum ELEMENT_NAME:LQa/g;

.field public static final enum ELEMENT_TEXT_CONTENT:LQa/g;

.field public static final enum END_OF_DOCUMENT:LQa/g;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, LQa/g;

    const-string v1, "ELEMENT_BEGIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LQa/g;->ELEMENT_BEGIN:LQa/g;

    new-instance v1, LQa/g;

    const-string v2, "ELEMENT_NAME"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LQa/g;->ELEMENT_NAME:LQa/g;

    new-instance v2, LQa/g;

    const-string v3, "ELEMENT_END"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LQa/g;->ELEMENT_END:LQa/g;

    new-instance v3, LQa/g;

    const-string v4, "ATTRIBUTE_NAME"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, LQa/g;->ATTRIBUTE_NAME:LQa/g;

    new-instance v4, LQa/g;

    const-string v5, "ATTRIBUTE_VALUE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, LQa/g;->ATTRIBUTE_VALUE:LQa/g;

    new-instance v5, LQa/g;

    const-string v6, "ELEMENT_TEXT_CONTENT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, LQa/g;->ELEMENT_TEXT_CONTENT:LQa/g;

    new-instance v6, LQa/g;

    const-string v7, "END_OF_DOCUMENT"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, LQa/g;->END_OF_DOCUMENT:LQa/g;

    filled-new-array/range {v0 .. v6}, [LQa/g;

    move-result-object v0

    sput-object v0, LQa/g;->$VALUES:[LQa/g;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LQa/g;
    .locals 1

    const-class v0, LQa/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LQa/g;

    return-object p0
.end method

.method public static values()[LQa/g;
    .locals 1

    sget-object v0, LQa/g;->$VALUES:[LQa/g;

    invoke-virtual {v0}, [LQa/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LQa/g;

    return-object v0
.end method
