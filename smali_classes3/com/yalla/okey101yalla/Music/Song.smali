.class public Lcom/yalla/okey101yalla/Music/Song;
.super Ljava/lang/Object;
.source "Song.java"


# instance fields
.field public album:Ljava/lang/String;

.field public album_art:Ljava/lang/String;

.field public duration:I

.field public isCheck:Z

.field public path:Ljava/lang/String;

.field public singer:Ljava/lang/String;

.field public size:J

.field public song:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yalla/okey101yalla/Music/Song;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbum_art()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yalla/okey101yalla/Music/Song;->album_art:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/yalla/okey101yalla/Music/Song;->duration:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yalla/okey101yalla/Music/Song;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSinger()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yalla/okey101yalla/Music/Song;->singer:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/yalla/okey101yalla/Music/Song;->size:J

    return-wide v0
.end method

.method public getSong()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yalla/okey101yalla/Music/Song;->song:Ljava/lang/String;

    return-object v0
.end method

.method public isCheck()Z
    .locals 1

    iget-boolean v0, p0, Lcom/yalla/okey101yalla/Music/Song;->isCheck:Z

    return v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yalla/okey101yalla/Music/Song;->album:Ljava/lang/String;

    return-void
.end method

.method public setAlbum_art(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yalla/okey101yalla/Music/Song;->album_art:Ljava/lang/String;

    return-void
.end method

.method public setCheck(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/yalla/okey101yalla/Music/Song;->isCheck:Z

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/yalla/okey101yalla/Music/Song;->duration:I

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yalla/okey101yalla/Music/Song;->path:Ljava/lang/String;

    return-void
.end method

.method public setSinger(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yalla/okey101yalla/Music/Song;->singer:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/yalla/okey101yalla/Music/Song;->size:J

    return-void
.end method

.method public setSong(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yalla/okey101yalla/Music/Song;->song:Ljava/lang/String;

    return-void
.end method
