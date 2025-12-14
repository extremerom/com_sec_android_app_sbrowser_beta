.class public final enum LP0/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LP0/c;

.field public static final enum BOOLEAN_TYPE:LP0/c;

.field public static final enum COLOR_DRAWABLE_TYPE:LP0/c;

.field public static final enum COLOR_TYPE:LP0/c;

.field public static final enum DIMENSION_TYPE:LP0/c;

.field public static final enum FLOAT_TYPE:LP0/c;

.field public static final enum INT_TYPE:LP0/c;

.field public static final enum STRING_TYPE:LP0/c;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, LP0/c;

    const-string v1, "INT_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LP0/c;->INT_TYPE:LP0/c;

    new-instance v1, LP0/c;

    const-string v2, "FLOAT_TYPE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LP0/c;->FLOAT_TYPE:LP0/c;

    new-instance v2, LP0/c;

    const-string v3, "COLOR_TYPE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LP0/c;->COLOR_TYPE:LP0/c;

    new-instance v3, LP0/c;

    const-string v4, "COLOR_DRAWABLE_TYPE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, LP0/c;->COLOR_DRAWABLE_TYPE:LP0/c;

    new-instance v4, LP0/c;

    const-string v5, "STRING_TYPE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, LP0/c;->STRING_TYPE:LP0/c;

    new-instance v5, LP0/c;

    const-string v6, "BOOLEAN_TYPE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, LP0/c;->BOOLEAN_TYPE:LP0/c;

    new-instance v6, LP0/c;

    const-string v7, "DIMENSION_TYPE"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, LP0/c;->DIMENSION_TYPE:LP0/c;

    filled-new-array/range {v0 .. v6}, [LP0/c;

    move-result-object v0

    sput-object v0, LP0/c;->$VALUES:[LP0/c;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LP0/c;
    .locals 1

    const-class v0, LP0/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LP0/c;

    return-object p0
.end method

.method public static values()[LP0/c;
    .locals 1

    sget-object v0, LP0/c;->$VALUES:[LP0/c;

    invoke-virtual {v0}, [LP0/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LP0/c;

    return-object v0
.end method
