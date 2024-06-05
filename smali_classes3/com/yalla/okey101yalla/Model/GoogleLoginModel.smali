.class public Lcom/yalla/okey101yalla/Model/GoogleLoginModel;
.super Ljava/lang/Object;
.source "GoogleLoginModel.java"


# instance fields
.field public AvatarURL:Ljava/lang/String;

.field public DisplayName:Ljava/lang/String;

.field public FamilyName:Ljava/lang/String;

.field public GivenName:Ljava/lang/String;

.field public Id:Ljava/lang/String;

.field public IdToken:Ljava/lang/String;

.field public RetCode:I

.field public name:Ljava/lang/String;

.field public serverAutoCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Clear()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/yalla/okey101yalla/Model/GoogleLoginModel;->RetCode:I

    const-string v0, ""

    iput-object v0, p0, Lcom/yalla/okey101yalla/Model/GoogleLoginModel;->IdToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/yalla/okey101yalla/Model/GoogleLoginModel;->Id:Ljava/lang/String;

    iput-object v0, p0, Lcom/yalla/okey101yalla/Model/GoogleLoginModel;->serverAutoCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/yalla/okey101yalla/Model/GoogleLoginModel;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/yalla/okey101yalla/Model/GoogleLoginModel;->GivenName:Ljava/lang/String;

    iput-object v0, p0, Lcom/yalla/okey101yalla/Model/GoogleLoginModel;->DisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/yalla/okey101yalla/Model/GoogleLoginModel;->FamilyName:Ljava/lang/String;

    iput-object v0, p0, Lcom/yalla/okey101yalla/Model/GoogleLoginModel;->AvatarURL:Ljava/lang/String;

    return-void
.end method
